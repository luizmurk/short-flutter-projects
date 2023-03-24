import { Router } from "express";

import { SampleComponent } from "../components";


const router: Router = Router();

router.get("/", SampleComponent.newReq);


export default router;