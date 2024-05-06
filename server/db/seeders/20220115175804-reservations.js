module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert('Reservations', [
      {
        clientName: 'Надежда', clientNumber: '+375298788475', masterId: 4, price: '180', serviceId: 4, time: '9:00', date: '2024-04-25', createdAt: new Date(), updatedAt: new Date(),
      },
    ]);
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.bulkDelete('Reservations');
  },
};
