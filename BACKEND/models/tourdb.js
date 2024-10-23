import db from "../config/database.js";

export const getTour = (result) => {
    db.query("SELECT * FROM tour", (err, results) =>{
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });
};