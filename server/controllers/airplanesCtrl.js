require("dotenv").config();


module.exports = {
  
  getAirplanes: async (req, res) => {
    const db = req.app.get("db");
    const airplanes = await db.get_airplanes();
    res.status(200).send(airplanes);
  },
};
