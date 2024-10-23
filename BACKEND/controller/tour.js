import { getTour } from "../models/tourdb.js";

export const showTour = (req, res) => {
    getTour((err, results) => {
        if (err) {
            res.send(err);
        } else {
            res.json(results);
        }
    })
}