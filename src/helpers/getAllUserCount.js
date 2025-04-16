import { useState, useEffect } from 'react';
import axios from 'axios';
import url from './getURL.js';

const UserCount = () => {
    const [count, setCount] = useState(0);

    useEffect(() => {
        axios
            .get(url('users/count'))
            .then((response) => setCount(response.data.data))
            .catch(() => setCount('Error fetching count'));
    }, []);

    return count;
};

export default UserCount;
