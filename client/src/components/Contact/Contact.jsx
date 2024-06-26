import React from 'react';
import { YMaps, Map, Placemark } from 'react-yandex-maps';
import { Link } from 'react-router-dom';
import './Contact.css';

function Contact(props) {
  const coordinates = [53.899111, 30.334903];
  return (
    <div className="footer">
      <div className="footer-content">
        <div className="footer-content-row-2">
          <YMaps>
            <Map defaultState={{ center: [53.899111, 30.334903], zoom: 15 }} className="footer-map">
              <Placemark geometry={coordinates} />
            </Map>
          </YMaps>
          <nav>
            <h3>Меню</h3>
            <ul className="footer-nav">
              <li>
                <Link to="/">Главная</Link>
              </li>
              <li>
                <Link to="/categories">Категории</Link>
              </li>
              <li>
                <Link to="/about">О нас</Link>
              </li>
              <li>
                <Link to="/reviews">Отзывы</Link>
              </li>
              <li>
                <Link to="/portfolio">Мастера</Link>
              </li>
              <li>
                <Link to="/reservation">Записаться</Link>
              </li>
            </ul>
          </nav>
          <div className="contacts">
            <h3>Контакты</h3>
            <ul>
              <li><strong>Адрес</strong>: г.Могилев, пер.Пожарный, 3а</li>
              <li><strong>Телефон</strong>: +375(29)5456284</li>
              <li><strong>Почта</strong>: tattoostyle@mail.ru</li>
            </ul>
          </div>
        </div>
        <div className="footer-content-row-3">
          <h2 className="footer-logo">Tattoo Style</h2>
        </div>
      </div>
    </div>
  );
}

export default Contact;
