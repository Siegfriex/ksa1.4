const { onRequest } = require("firebase-functions/v2/https");
const logger = require("firebase-functions/logger");

exports.helloNEOGOD = onRequest((request, response) => {
  logger.info("Hello logs!", { structuredData: true });
  response.send("Hello NEO GOD, from Firebase!");
});
