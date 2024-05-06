module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert('Categories', [
      {
        name: 'Нанесение татуировки', picture: '/images/tatoo.jpg', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Перманентный макияж', picture: '/images/permanent.jpg', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Удаление татуировки ', picture: 'images/delete.jpg', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Консультация', picture: 'images/cons.jpg', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Архитектура и окрашивание бровей', picture: 'images/brows.jpg', createdAt: new Date(), updatedAt: new Date(),
      },
    ]);
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.bulkDelete('Categories');
  },
};
