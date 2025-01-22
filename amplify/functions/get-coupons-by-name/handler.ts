import type { Schema } from "../../data/resource"

export const handler: Schema["getCouponsByName"]["functionHandler"] = async (event, context) => {
  // your function code goes here
  const { name } = event.arguments
  return `Hello, ${name}!`
};