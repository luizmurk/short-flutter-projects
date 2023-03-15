import * as express from "express";
import * as http from "http";

export function init(app: express.Application): void {
  const router: express.Router = express.Router();

  // app.use("/auth", AuthRouter);
  // app.use("/booking", userAuth.userIsValid, BookingRouter);
  // app.use("/file", userAuth.userIsValid, FileRouter);
  // app.use("/user", userAuth.userIsValid, UserRouter);
  // app.use("/request", userAuth.userIsValid, RequestRouter);
  // app.use("/referral", userAuth.userIsValid, ReferralRouter);
  // app.use("/payment", userAuth.userIsValid, PaymentMethodRouter);
  // app.use("/faq", userAuth.userIsValid, FaqRouter);

  app.use((req, res) => {
    res.status(404).send(http.STATUS_CODES[404]);
  });

  app.use(router);
}
