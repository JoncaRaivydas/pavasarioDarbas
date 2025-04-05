import axios from 'axios';
import url from './getURL.js';

const updateUserInfo = async (id, data) => {
    const response = await axios
        .patch(url(`users/update/${id}`), data, { withCredentials: true })
        .catch((error) => console.log(error));
    return response;
};

const updatePassword = async (id, data) => {
    const response = await axios
        .patch(url(`users/password/${id}`), data, { withCredentials: true })
        .catch((error) => console.log(error));
    return response;
};

const updateUserAvatar = async (id, data) => {
    const response1 = await axios
        .patch(url(`upload/avatar`), data, { withCredentials: true })
        .catch((error) => {
            console.log(error);
        });
    const response2 = await axios
        .get(url(`users/avatar/${id}`), { withCredentials: true })
        .catch((error) => {
            console.log(error);
        });
    return { response1, response2 };
};

export { updateUserInfo, updatePassword, updateUserAvatar };
