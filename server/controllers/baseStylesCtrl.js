require("dotenv").config();

module.exports = {
  getBaseStyles: async (req, res) => {
    const db = req.app.get("db");
    const styles = await db.get_base_styles();
    res.status(200).send(styles);
  },
};
