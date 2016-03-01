__kernel void compiler_atomic_functions(__global int *dst, __local int *tmp, __global int *src) {
  int lid = get_local_id(0);
  int i = lid % 12;
  if(lid == 0) {
    for(int j=0; j<12; j=j+1) {
      atomic_xchg(&tmp[j], 0);
    }
    atomic_xchg(&tmp[4], -1);
  }
  barrier(CLK_LOCAL_MEM_FENCE);

  switch(i) {
    case 0: atomic_inc(&tmp[i]); break;
    case 1: atomic_dec(&tmp[i]); break;
    case 2: atomic_add(&tmp[i], src[lid]); break;
    case 3: atomic_sub(&tmp[i], src[lid]); break;
    case 4: atomic_and(&tmp[i], ~(src[lid]<<(lid / 16))); break;
    case 5: atomic_or (&tmp[i], src[lid]<<(lid / 16)); break;
    case 6: atomic_xor(&tmp[i], src[lid]); break;
    case 7: atomic_min(&tmp[i], -src[lid]); break;
    case 8: atomic_max(&tmp[i], src[lid]); break;
    case 9: atomic_min((__local unsigned int *)&tmp[i], -src[lid]); break;
    case 10: atomic_max((__local unsigned int *)&tmp[i], src[lid]); break;
    case 11: atomic_cmpxchg(&(tmp[i]), 0, src[10]); break;
    default:  break;
  }

  switch(i) {
    case 0: atomic_inc(&dst[i]); break;
    case 1: atomic_dec(&dst[i]); break;
    case 2: atomic_add(&dst[i], src[lid]); break;
    case 3: atomic_sub(&dst[i], src[lid]); break;
    case 4: atomic_and(&dst[i], ~(src[lid]<<(lid / 16))); break;
    case 5: atomic_or (&dst[i], src[lid]<<(lid / 16)); break;
    case 6: atomic_xor(&dst[i], src[lid]); break;
    case 7: atomic_min(&dst[i], -src[lid]); break;
    case 8: atomic_max(&dst[i], src[lid]); break;
    case 9: atomic_min((__global unsigned int *)&dst[i], -src[lid]); break;
    case 10: atomic_max((__global unsigned int *)&dst[i], src[lid]); break;
    case 11: atomic_cmpxchg(&dst[i], 0, src[10]); break;
    default:  break;
  }

  barrier(CLK_GLOBAL_MEM_FENCE);

  if(get_global_id(0) == 0) {
    for(i=0; i<12; i=i+1)
      atomic_xchg(&dst[i+12], tmp[i]);
  }
}

__kernel void compiler_atomic_functions_20(__global int *dst, __local int *tmp, __global int *src) {
  int lid = get_local_id(0);
  int i = lid % 12;
  atomic_int* p = (atomic_int*)tmp;
  if(lid == 0) {
    for(int j=0; j<12; j=j+1) {
      atomic_exchange(&p[j], 0);
    }
    atomic_exchange(&p[4], -1);
  }
  barrier(CLK_LOCAL_MEM_FENCE);
  int compare = 0;

  switch(i) {
    case 0: atomic_inc(&tmp[i]); break;
    case 1: atomic_dec(&tmp[i]); break;
    case 2: atomic_fetch_add(&p[i], src[lid]); break;
    case 3: atomic_fetch_sub(&p[i], src[lid]); break;
    case 4: atomic_fetch_and(&p[i], ~(src[lid]<<(lid / 16))); break;
    case 5: atomic_fetch_or (&p[i], src[lid]<<(lid / 16)); break;
    case 6: atomic_fetch_xor(&p[i], src[lid]); break;
    case 7: atomic_fetch_min(&p[i], -src[lid]); break;
    case 8: atomic_fetch_max(&p[i], src[lid]); break;
    case 9: atomic_fetch_min((atomic_uint*)&p[i], -src[lid]); break;
    case 10: atomic_fetch_max((atomic_uint*)&p[i], src[lid]); break;
    case 11: atomic_compare_exchange_strong(&p[i], &compare, src[10]); break;
    default:  break;
  }

  atomic_int* d = (atomic_int*)dst;
  switch(i) {
    case 0: atomic_inc(&dst[i]); break;
    case 1: atomic_dec(&dst[i]); break;
    case 2: atomic_fetch_add(&d[i], src[lid]); break;
    case 3: atomic_fetch_sub(&d[i], src[lid]); break;
    case 4: atomic_fetch_and(&d[i], ~(src[lid]<<(lid / 16))); break;
    case 5: atomic_fetch_or (&d[i], src[lid]<<(lid / 16)); break;
    case 6: atomic_fetch_xor(&d[i], src[lid]); break;
    case 7: atomic_fetch_min(&d[i], -src[lid]); break;
    case 8: atomic_fetch_max(&d[i], src[lid]); break;
    case 9: atomic_fetch_min((atomic_uint*)&d[i], -src[lid]); break;
    case 10: atomic_fetch_max((atomic_uint*)&d[i], src[lid]); break;
    case 11: atomic_compare_exchange_strong(&d[i], &compare, src[10]); break;
    default:  break;
  }

  barrier(CLK_GLOBAL_MEM_FENCE);

  if(get_global_id(0) == 0) {
    for(i=0; i<12; i=i+1)
      atomic_xchg(&dst[i+12], tmp[i]);
  }
}
