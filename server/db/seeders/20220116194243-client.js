const bcrypt = require('bcrypt');

const generateHashPass = (password) => bcrypt.hashSync(password, 10);

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert('Clients', [
      {
        login: 'Надежда', password: generateHashPass('123456789'), telephone: '+375298788475', isAdmin: false, createdAt: new Date(), updatedAt: new Date(),
      },
    ]);
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.bulkDelete('Clients');
  },
};
