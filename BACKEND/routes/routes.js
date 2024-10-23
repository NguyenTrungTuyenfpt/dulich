import express from 'express';

import { showTour } from '../controller/tour.js';

const router = express.Router();

router.get('/tour', showTour);

export default router;