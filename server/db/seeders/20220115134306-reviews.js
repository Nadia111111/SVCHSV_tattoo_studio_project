module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert('Rewiews', [
      {
        name: 'DarkMoon', text: 'Суперское место, в котором работают профессионалы своего дела. Моя любимая студия', isValid: true, createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'NightFuri', text: 'Атмосферное место, сервис на самом высоком уровне. Делала перманентный макияж, результат получился выше всяких похвал. Мастерство очевидно', isValid: true, createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Кусачая', text: 'Прекрасный салон, индивидуальный подход.', isValid: true, createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'MichaelexahYJ', text: 'Первый раз в студии, очень милая и хорошая девушка, как мастер тоже супер, теперь у меня отличная татуировка! Стоит отметить, что уютная студия с хорошим расположением. Спасибо ️', isValid: true, createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Romantico', text: 'Сделали хорошее тату, высокий уровень сервиса не может не радовать!', isValid: true, createdAt: new Date(), updatedAt: new Date(),
      },
    ]);
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.bulkDelete('Rewiews');
  },
};
