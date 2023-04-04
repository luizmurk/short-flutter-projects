import { Router } from "express";

import { SampleComponent } from "../components";


const router: Router = Router();

router.get("/", SampleComponent.newReq);
router.post("/post", SampleComponent.postReq);
router.get("/read/:id", SampleComponent.readReq);
router.delete("/delete/:id", SampleComponent.deleteReq);
router.delete("/update/:id", SampleComponent.updateReq);


export default router;