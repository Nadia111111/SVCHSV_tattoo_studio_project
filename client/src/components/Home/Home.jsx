import React from 'react';
import Categories from '../Categories/Categories';
import MainHeader from '../MainHeader/MainHeader';
import PromoPhotos from '../PromoPhotos/PromoPhotos';

function Home(props) {

return (
  <div>
    <MainHeader />
    <PromoPhotos />
    <Categories />
    {/* <button onClick={sendSMS}>SMS</button> */}
  </div>
);
}

export default Home;

