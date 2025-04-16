import { useState } from 'react';
import { useForm } from 'react-hook-form';
import { updateUserInfo } from '../../../helpers/updateUserInfo';
import { ToastContainer, toast } from 'react-toastify';

const ModalContacts = ({ user, showModal, setShowModal }) => {
    const { id, contacts } = user;

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
            setValue('contacts', '');
            toast.success('Contacts updated successfully!', {
                position: 'bottom-right',
                autoClose: 2000,
                style: { background: '#161D2F', color: '#FFFFFF' },
                hideProgressBar: true,
            });
            setTimeout(() => window.location.reload(), 2000);
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
                <ToastContainer />
                <div className="flex dark:bg-gray-800 items-center justify-between px-6 py-4 border-b border-gray-200">
                    <h3 className="text-xl dark:text-white font-semibold text-gray-800">
                        Edit Contacts
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
                    className="p-6 dark:bg-gray-800"
                >
                    <div className="mb-4 dark:bg-gray-800">
                        <textarea
                            type="text"
                            placeholder={
                                contacts || 'Phone number, facebook, twitter...'
                            }
                            {...register('contacts', {
                                required: 'This field is required',
                                onChange: () => {
                                    setError('');
                                    clearErrors('contacts');
                                },
                            })}
                            className="w-full h-32 px-4 py-2 dark:text-white border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500 focus:border-transparent resize-none"
                        />
                        {errors.contacts && (
                            <p className="text-red-500 text-sm mt-2">
                                {errors.contacts.message}
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
                        Submit New Contacts
                    </button>
                </form>
            </div>
        </div>
    );
};

export default ModalContacts;
