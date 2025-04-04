import express from "express";
import {
  getUserProductsByUserName,
  getHotProducts,
  getTopRatedProducts,
  getTopUserProducts,
  getTrendingUserProducts,
  getAllProductCount,
  getRatedProductsByUserName,
  getAllProductsSorted,
  getProductById,
  getUserProducts,
  createProduct,
  editProduct,
  deleteProduct,
} from "../controllers/productController.js";
import protect from "../validators/validateJWT.js";

import { getPaginatedProducts } from "../controllers/paginatedProductController.js";

const productRouter = express.Router();

productRouter.route("/").get(getPaginatedProducts);
productRouter.route("/alltopuserproducts").get(getTopUserProducts);
productRouter.route("/trending").get(getTrendingUserProducts);
productRouter.route("/bestnew").get(getHotProducts);
productRouter.route("/top").get(getTopRatedProducts);
productRouter.route("/count").get(getAllProductCount);
productRouter.route("/products/sorted").get(getAllProductsSorted);
productRouter.route("/sorted").get(getAllProductsSorted);
productRouter.route("/u/:username").get(getUserProductsByUserName);
productRouter.route("/rated/:username").get(getRatedProductsByUserName);
productRouter.route("/:id").get(getUserProducts);
productRouter.route("/selected/:id").get(getProductById);
productRouter.route("/user/:id").get(getUserProducts);
productRouter.use(protect);
productRouter.route("/user").post(createProduct);
productRouter
  .route("/user/p/:productId")
  .patch(editProduct)
  .delete(deleteProduct);

export default productRouter;
