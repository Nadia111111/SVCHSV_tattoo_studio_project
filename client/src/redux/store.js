
import { createStore, applyMiddleware } from 'redux';
import { composeWithDevTools } from 'redux-devtools-extension';
import createSagaMiddleware from 'redux-saga'
import { rootReducer } from './reducers/rootReducer';
import { mySaga } from '../redux/sagas/sagas';
import { portfolioWatcher } from './sagas/portfolioSaga'
import { portfolioCWatcher } from './sagas/portfolioCSaga'
import { reservationCategories } from './sagas/reservationCategoriesSaga';
import { sessionWatcher } from './sagas/sessionSaga'
import { cabinetWatcher } from './sagas/cabinetSaga';
import { allMastersWatcher } from './sagas/allMastersSaga'
import { deleteUserWatcher } from './sagas/deleteUserSaga'

const sagaMiddleware = createSagaMiddleware()

// sagaMiddleware.run(myWatcher)
// sagaMiddleware.run(portfolioWatcher)

export const store = createStore(rootReducer, composeWithDevTools(applyMiddleware(sagaMiddleware)));
sagaMiddleware.run(portfolioWatcher)
sagaMiddleware.run(mySaga)
sagaMiddleware.run(portfolioCWatcher)
sagaMiddleware.run(reservationCategories)
sagaMiddleware.run(sessionWatcher)
sagaMiddleware.run(cabinetWatcher)
sagaMiddleware.run(deleteUserWatcher)
sagaMiddleware.run(allMastersWatcher)
