module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.bulkInsert('Services', [
      {
        name: 'Black and Grey', picture: '', categoryId: '1', description: 'Выполняют изображения животных, абстрактные рисунки, узоры, реалистичные портеры и т. д.', price: '200', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Whip Shading', picture: '', categoryId: '1', description: 'Техника татуирования с помощью так называемой «штриховки», похожей на нанесение штриха карандашом на бумаге.', price: '250', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Linework', picture: '', categoryId: '1', description: 'Особенностью техники linework является наличие четких прямых линий разной толщины, из которых и состоит само изображение. Данное направление в искусстве татуировок выделяется строгостью, контрастом изображений, а также порой причудливыми фантастическими сюжетами', price: '220', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Dotwork', picture: '', categoryId: '1', description: 'Дотворк – это особый стиль и техника нанесения татуировок, получившая свое название от английского слова dotwork, что в дословном переводе означает «точечная работа: тату в стиле дотворк состоит из множества точек, нанесенных с определенным интервалом, из которых и складывается нательный рисунок.', price: '180', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'OldSchool', picture: '', categoryId: '1', description: 'Татуировки в стиле Олдскул отличаются своей красочностью. В рисунках присутствуют все возможные цвета, но обязательным моментом является наличие толстого черного контура. Рисункам не присуждается реалистичность, именно поэтому при создании татуировок мастер не наносит тени.', price: '260', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Перманентный макияж губ', picture: '', categoryId: '2', description: 'Это бьюти-процедура, при которой с помощью специальной машинки в верхние слои кожи вводится пигмент. Аппарат снабжен тонкими микроиглами, в результате чего боль и неприятные ощущения практически исключаются. Перманентный макияж также называют косметическим татуажем.', price: '120', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Перманентный макияж бровей', picture: '', categoryId: '2', description: 'Процедура, во время которой под кожу вводится пигмент с целью коррекции формы, густоты и цвета бровей. Это несмываемый мейкап, выполненный методом поверхностной татуировки, поэтому перманентный макияж ещё называют татуажем', price: '90', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Перманентный макияж век', picture: '', categoryId: '2', description: 'Это введение пигмента для получения идеального контура подведенных глаз. Процедура позволяет женщине выглядеть свежо в любое время дня и экономит время на сборы и приведение себя в порядок.', price: '110', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Удаление татуировки', picture: '', categoryId: '3', description: 'Осветление некачественных татуировок с помощью лазера и ремувера.', price: '150', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Удаление перманентного макияжа', picture: '', categoryId: '3', description: 'Осветление перманентного макияжа с помощью лазера и ремувера', price: '100', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Консультация', picture: '', categoryId: '4', description: 'Бесплатные консультации по всем видам интересующих Вас услуг.', price: '0', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Окрашивание ресниц', picture: '', categoryId: '5', description: 'Волоски ресниц становятся визуально ярче и длиннее, что делает взгляд более выразительным, подчеркивает его.', price: '15', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Ламинирование ресниц', picture: '', categoryId: '5', description: 'Метод заключается в накладывании и выдерживании на волосках в течение определенного времени специального состава. Он окрашивает, создает эффект наращивания и облегчает укладку, придающую бровям и ресницам необходимый изгиб.', price: '25', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Архитектура и окрашивание бровей', picture: '', categoryId: '5', description: 'Архитектура бровей – это искусство создания формы бровей, в котором используются такие методики как коррекция (удаление волосков с помощью пинцета, нити, воска и др.), окрашивание стойкой краской либо хной.', price: '25', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Окрашивание бровей + ламинирование', picture: '', categoryId: '5', description: '', price: '40', createdAt: new Date(), updatedAt: new Date(),
      },
      {
        name: 'Полный комплекс ресницы + брови', picture: '', categoryId: '5', description: '', price: '45', createdAt: new Date(), updatedAt: new Date(),
      },
      ]);
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.bulkDelete('Services');
  },
};
