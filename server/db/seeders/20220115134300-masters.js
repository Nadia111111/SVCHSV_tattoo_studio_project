module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert('Masters', [
      {
        name: 'Оксана', category: 'Основатель и руководитель студии. Практикующий мастер с опытом работы 19 лет.', picture: 'images/oksana.png', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Алиса', category: 'Мастер перманентного макияжа и художественной татуировки. ', picture: 'images/alice.png', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Анатолий', category: 'Мастер художественной татуировки.', picture: 'images/tolya.jpg', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Владимир', category: 'Мастер удаления/осветления некачественных татуировок и перманентного макияжа.', picture: 'images/vladimir.png', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Мария', category: 'Мастер художественной татуировки.', picture: 'images/mary.png', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Алекс', category: 'Мастер художественной татуировки.', picture: 'images/alex.jpg', createdAt: new Date(), updatedAt: new Date(),
      },
      ]);
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.bulkDelete('Masters');
  },
};
