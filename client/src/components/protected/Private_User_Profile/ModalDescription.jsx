import { useState } from 'react';
import { useForm } from 'react-hook-form';
import { updateUserInfo } from '../../../helpers/updateUserInfo';

const ModalDescription = ({ user, showModal, setShowModal }) => {
    const { id, description } = user;

    const [error, setError] = useState('');

    const {
        register,
        handleSubmit,
        formState: { errors },
        setValue,
        clearErrors,
    } = useForm();

    const submitHandler = async (data) => {
        try {
            await updateUserInfo(id, data);
            setError('');
            setValue('description', '');
        } catch (error) {
            setError(error);
        }
    };

    const handleClose = () => {
        setShowModal(false);
    };

    return (
        <div className="fixed inset-0 z-40 flex items-center justify-center bg-stone-900/50">
            <div className="bg-white rounded-lg shadow-xl w-full max-w-md overflow-hidden">
                <div className="flex dark:bg-gray-800 items-center justify-between px-6 py-4 border-b border-gray-200">
                    <h3 className="text-xl dark:text-white font-semibold text-gray-800">
                        Edit Description
                    </h3>
                    <button
                        onClick={handleClose}
                        className="text-gray-500 hover:text-gray-700 focus:outline-none p-1 rounded-full hover:bg-gray-100 transition duration-200"
                    >
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            className="h-6 w-6"
                            fill="none"
                            viewBox="0 0 24 24"
                            stroke="currentColor"
                        >
                            <path
                                strokeLinecap="round"
                                strokeLinejoin="round"
                                strokeWidth={2}
                                d="M6 18L18 6M6 6l12 12"
                            />
                        </svg>
                    </button>
                </div>
                <form
                    onSubmit={handleSubmit(submitHandler)}
                    className="dark:bg-gray-800 p-6"
                >
                    <div className="mb-4">
                        <textarea
                            type="text"
                            placeholder={
                                description || 'Tell about yourself...'
                            }
                            {...register('description', {
                                required: 'This field is required',
                                onChange: () => {
                                    setError('');
                                    clearErrors('description');
                                },
                            })}
                            className="w-full h-32 px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500 focus:border-transparent resize-none"
                        />
                        {errors.description && (
                            <p className="text-red-500 text-sm mt-2">
                                {errors.description.message}
                            </p>
                        )}
                    </div>
                    {error && (
                        <div className="mb-4 p-3 bg-red-100 border border-red-400 text-red-700 rounded">
                            {error}
                        </div>
                    )}
                    <button
                        type="submit"
                        className="w-full bg-red-500 hover:bg-red-600 text-white font-medium py-2 px-4 rounded-lg transition duration-200 focus:outline-none focus:ring-2 focus:ring-red-500 focus:ring-opacity-50"
                    >
                        Submit New Description
                    </button>
                </form>
            </div>
        </div>
    );
};

export default ModalDescription;
