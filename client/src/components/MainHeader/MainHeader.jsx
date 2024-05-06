import './MainHeader.css';

function MainHeader () {
  return <div className="main-header">
    <h1 className="main-h1">Tattoo Style</h1>
    <p className="main-p-up">ДЛЯ ТЕХ, КТО ИЗ ЛУЧШЕГО <br />ВЫБИРАЕТ ИСКЛЮЧИТЕЛЬНОЕ</p>
    <p className="main-p-bottom"> переулок Пожарный, 3А</p>
    <img className="main-img" src="/images/main.jpeg" alt="" />
  </div>
}

export default MainHeader;