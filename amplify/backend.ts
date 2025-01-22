import { defineBackend } from '@aws-amplify/backend';
import { auth } from './auth/resource';
import { data } from './data/resource';
import { getCouponsByName } from './functions/get-coupons-by-name/resource';

defineBackend({
  auth,
  data,
  getCouponsByName,
});
