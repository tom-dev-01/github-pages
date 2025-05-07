<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Catalog</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <script src="https://unpkg.com/@tailwindcss/browser@latest"></script>
    <style>
        /* Custom styles for the orange and white theme */
        .bg-orange-100 { background-color: #fef3c7; /* Light orange */ }
        .bg-orange-500 { background-color: #f97316; /* Medium orange */ }
        .text-orange-500 { color: #f97316; }
        .hover\:bg-orange-600:hover { background-color: #dc2626; /* Darker orange on hover */ }
        .border-orange-500 { border-color: #f97316; }
        .text-white { color: #ffffff; }
        .bg-white { background-color: #ffffff; }
        .text-gray-700 { color: #4b5563; }
        .font-semibold { font-weight: 600; }
        .rounded-md { border-radius: 0.375rem; /* Rounded corners */ }
        .px-4 { padding-left: 1rem; padding-right: 1rem; }
        .py-2 { padding-top: 0.5rem; padding-bottom: 0.5rem; }
        .mr-2 { margin-right: 0.5rem; }
        .mb-4 { margin-bottom: 1rem; }
        .font-bold { font-weight: 700; }
        .text-center { text-align: center; }
        .shadow-md { box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06); }
        .table-auto { table-layout: auto; }
        .w-full { width: 100%; }
        .border-collapse { border-collapse: collapse; }
        .border { border-width: 1px; }
        .text-left { text-align: left; }
        .text-right{text-align: right;}

        /* Added for better UI */
        .form-container {
            max-width: 600px; /* Increased max-width for larger screens */
            margin: 2rem auto; /* Added margin for spacing */
            padding: 2rem;
            background-color: #ffffff; /* White background for the form */
            border-radius: 0.75rem; /* Rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        }

        .form-header {
            text-align: center;
            margin-bottom: 1.5rem;
        }

        .input-group {
            margin-bottom: 1.5rem; /* Increased spacing between input groups */
        }

        .input-group label {
            display: block;
            margin-bottom: 0.5rem; /* Space between label and input */
            font-weight: 500;
            color: #4b5563;
        }

        .input-group input, .input-group select {
            width: 100%;
            padding: 0.75rem; /* Increased padding for larger inputs */
            border: 1px solid #e0e0e0; /* Lighter border */
            border-radius: 0.375rem;
            font-size: 1rem; /* Increased font size */
            transition: border-color 0.2s ease; /* Smooth transition */
        }

        .input-group input:focus, .input-group select:focus {
            outline: none; /* Remove default outline */
            border-color: #f97316; /* Orange border on focus */
            box-shadow: 0 0 0 3px rgba(251, 146, 60, 0.2); /* Subtle orange shadow */
        }

        .form-actions {
            text-align: center; /* Center buttons */
            margin-top: 2rem; /* Add space above buttons */
        }

        .btn-primary {
            padding: 0.8rem 1.6rem; /* Increased button padding */
            font-size: 1.1rem; /* Increased font size */
        }

        .contact-list-container {
            margin-top: 2rem; /* Space above the contact list */
            padding: 0 1rem; /* Add horizontal padding */
        }

        .contact-list-header {
            margin-bottom: 1.5rem;
            text-align: center;
        }

        .contact-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1rem;
            border-radius: 0.5rem;
            overflow: hidden; /* For rounded corners of the table */
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
        }

        .contact-table thead th {
            background-color: #fef3c7; /* Light orange header */
            color: #f97316; /* Orange text in header */
            padding: 1rem;
            text-align: left;
            font-weight: 600;
            border-bottom: 2px solid #f97316; /* Orange bottom border */
        }

        .contact-table tbody tr:nth-child(odd) {
            background-color: #fff; /* White for odd rows */
        }

        .contact-table tbody tr:nth-child(even) {
            background-color: #f7f7f7; /* Slightly darker for even rows */
        }

        .contact-table tbody td {
            padding: 1rem;
            border-bottom: 1px solid #e0e0e0; /* Lighter bottom border */
            color: #4b5563;
        }

        .contact-table tbody tr:hover {
            background-color: #f5f5f5; /* Slight background change on hover */
            transition: background-color 0.2s ease;
        }

        .action-buttons {
            display: flex;
            justify-content: flex-end; /* Push buttons to the right */
        }

        .action-button {
            padding: 0.5rem 1rem;
            border-radius: 0.375rem;
            font-size: 0.9rem;
            margin-left: 0.5rem; /* Space between buttons */
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        .edit-button {
            background-color: #fef08a; /* Yellowish for edit */
            color: #1e293b;
            border: 1px solid #fde047;
        }
        .edit-button:hover {
             background-color: #fcd34d; /* Darker yellow on hover */
        }

        .delete-button {
            background-color: #fecaca; /* Light red for delete */
            color: #1e293b;
            border: 1px solid #fca5a5;
        }

        .delete-button:hover {
            background-color: #f87171; /* Darker red on hover */
        }

        /* Styles for the Admin Dashboard (placeholders - adjust as needed) */
        .dashboard-container {
            max-width: 800px;
            margin: 2rem auto;
            padding: 2rem;
            background-color: #ffffff;
            border-radius: 0.75rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .dashboard-header {
            text-align: center;
            margin-bottom: 1.5rem;
        }

        .dashboard-stats {
            display: flex;
            justify-content: space-around;
            margin-bottom: 1.5rem;
            flex-wrap: wrap; /* Allow items to wrap on smaller screens */
            gap: 1rem; /* Add some gap between the stat boxes */
        }

        .stat-box {
            background-color: #fef3c7;
            padding: 1rem;
            border-radius: 0.375rem;
            text-align: center;
            flex: 1; /* Distribute space evenly */
            min-width: 200px; /* Ensure a minimum width */
        }

        .stat-box h3 {
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
            color: #f97316;
        }

        .stat-box p {
            font-size: 1rem;
            color: #4b5563;
        }

        .recent-contacts-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1rem;
            border-radius: 0.5rem;
            overflow: hidden;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
        }

        .recent-contacts-table thead th {
            background-color: #fef3c7;
            color: #f97316;
            padding: 0.75rem;
            text-align: left;
            font-weight: 600;
            border-bottom: 2px solid #f97316;
        }

        .recent-contacts-table tbody tr:nth-child(odd) {
            background-color: #fff;
        }

        .recent-contacts-table tbody tr:nth-child(even) {
            background-color: #f7f7f7;
        }

        .recent-contacts-table tbody td {
            padding: 0.75rem;
            border-bottom: 1px solid #e0e0e0;
            color: #4b5563;
        }

        .recent-contacts-table tbody tr:hover {
            background-color: #f5f5f5;
            transition: background-color 0.2s ease;
        }


        /* Styles for the Printable Report (placeholder - adjust as needed) */
        .report-container {
            max-width: 800px;
            margin: 2rem auto;
            padding: 2rem;
            background-color: #ffffff;
            border-radius: 0.75rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .report-header {
            text-align: center;
            margin-bottom: 1.5rem;
        }

        .filter-section {
            margin-bottom: 1.5rem;
            text-align: center;
        }

        .report-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 1rem;
            border-radius: 0.5rem;
            overflow: hidden;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
        }

        .report-table thead th {
            background-color: #fef3c7;
            color: #f97316;
            padding: 0.75rem;
            text-align: left;
            font-weight: 600;
            border-bottom: 2px solid #f97316;
        }

        .report-table tbody tr:nth-child(odd) {
            background-color: #fff;
        }

        .report-table tbody tr:nth-child(even) {
            background-color: #f7f7f7;
        }

        .report-table tbody td {
            padding: 0.75rem;
            border-bottom: 1px solid #e0e0e0;
            color: #4b5563;
        }

        .print-button {
            text-align: center;
            margin-top: 2rem;
        }
    </style>
</head>
<body class="bg-orange-100 font-sans">
    <div class="form-container">
        <h1 class="form-header text-2xl font-bold text-orange-500">Contact Details Form</h1>
        <form id="contactForm" class="bg-white rounded-md shadow-md p-6">
            <div class="input-group">
                <label for="full_names">Full Names:</label>
                <input type="text" id="full_names" name="full_names" class="border border-orange-500 rounded-md px-4 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500" required>
                <div id="full_names-error" class="text-red-500 text-sm mt-1"></div>
            </div>
            <div class="input-group">
                <label for="phone_number">Phone Number:</label>
                <input type="text" id="phone_number" name="phone_number" class="border border-orange-500 rounded-md px-4 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500">
                <div id="phone_number-error" class="text-red-500 text-sm mt-1"></div>
            </div>
            <div class="input-group">
                <label for="email_address">Email Address:</label>
                <input type="email" id="email_address" name="email_address" class="border border-orange-500 rounded-md px-4 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500" required>
                <div id="email_address-error" class="text-red-500 text-sm mt-1"></div>
            </div>
            <div class="input-group">
                <label for="id_number">ID Number:</label>
                <input type="text" id="id_number" name="id_number" class="border border-orange-500 rounded-md px-4 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500" required>
                <div id="id_number-error" class="text-red-500 text-sm mt-1"></div>
            </div>
            <div class="input-group">
                <label for="date_of_birth">Date of Birth:</label>
                <input type="date" id="date_of_birth" name="date_of_birth" class="border border-orange-500 rounded-md px-4 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500" required>
                <div id="date_of_birth-error" class="text-red-500 text-sm mt-1"></div>
            </div>
            <div class="input-group">
                <label for="gender">Gender:</label>
                <select id="gender" name="gender" class="border border-orange-500 rounded-md px-4 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500" required>
                    <option value="">Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
                <div id="gender-error" class="text-red-500 text-sm mt-1"></div>
            </div>
            <div class="input-group">
                <label for="county">County of Residence:</label>
                <input type="text" id="county" name="county" class="border border-orange-500 rounded-md px-4 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500" required>
                <div id="county-error" class="text-red-500 text-sm mt-1"></div>
            </div>
            <div class="form-actions">
                <button type="submit" id="saveContact" class="btn-primary bg-orange-500 hover:bg-orange-600 text-white rounded-md px-6 py-3 focus:outline-none focus:ring-2 focus:ring-orange-500 font-semibold">Save Contact</button>
                <button type="button" id="updateContact" class="btn-primary bg-orange-500 hover:bg-orange-600 text-white rounded-md px-6 py-3 focus:outline-none focus:ring-2 focus:ring-orange-500 font-semibold" style="display: none;">Update Contact</button>
                <button type="button" id="cancelUpdate" class="btn-primary bg-gray-300 hover:bg-gray-400 text-gray-700 rounded-md px-6 py-3 focus:outline-none focus:ring-2 focus:ring-gray-300 font-semibold ml-2" style="display: none;">Cancel</button>
            </div>
        </form>
    </div>

    <div class="contact-list-container">
        <h2 class="contact-list-header text-2xl font-bold text-orange-500">Contact List</h2>
        <div id="contactList" class="bg-white rounded-md shadow-md overflow-x-auto">
            <table class="contact-table table-auto w-full border-collapse border">
                <thead>
                    <tr>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">Full Names</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">Phone Number</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">Email Address</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">ID Number</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">Date of Birth</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">Gender</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">County of Residence</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-right">Actions</th>
                    </tr>
                </thead>
                <tbody id="contactTableBody">
                    <tr>
                        <td colspan="8" class="px-4 py-2 text-center text-gray-500">No contacts available</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="dashboard-container">
        <h2 class="dashboard-header text-2xl font-bold text-orange-500">Admin Dashboard</h2>
        <div class="dashboard-stats">
            <div class="stat-box">
                <h3 id="genderStatsTitle">Gender Statistics</h3>
                <div id="genderStats">
                    <p>Loading...</p>
                </div>
            </div>
            <div class="stat-box">
                <h3 id="countyStatsTitle">County Statistics</h3>
                <div id="countyStats">
                     <p>Loading...</p>
                </div>
            </div>
        </div>
        <div class="recent-contacts">
            <h3 class="text-lg font-semibold mb-4 text-orange-500">Recently Added Contacts</h3>
            <table id="recentContactsTable" class="recent-contacts-table table-auto w-full border-collapse border">
                <thead>
                    <tr>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">Full Names</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">Phone Number</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">Email Address</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">Date of Birth</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">County</th>
                    </tr>
                </thead>
                <tbody id="recentContactsTableBody">
                    <tr>
                        <td colspan="5" class="px-4 py-2 text-center text-gray-500">No recent contacts available</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="report-container">
        <h2 class="report-header text-2xl font-bold text-orange-500">Contact Details Report</h2>
        <div class="filter-section">
            <label for="countyFilter" class="mr-2 font-semibold text-gray-700">Filter by County:</label>
            <select id="countyFilter" class="border border-orange-500 rounded-md px-4 py-2 focus:outline-none focus:ring-2 focus:ring-orange-500">
                <option value="">All Counties</option>
                </select>
        </div>
        <div id="reportContent" class="report-table table-auto w-full border-collapse border">
            <table class="report-table table-auto w-full border-collapse border">
                <thead>
                    <tr>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">Full Names</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">Phone Number</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">Email Address</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">ID Number</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">Date of Birth</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">Gender</th>
                        <th class="px-4 py-2 border-b-2 border-orange-500 text-left">County of Residence</th>
                    </tr>
                </thead>
                <tbody id="reportTableBody">
                    <tr>
                        <td colspan="7" class="px-4 py-2 text-center text-gray-500">No contacts available</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="print-button">
            <button onclick="window.print()" class="bg-orange-500 hover:bg-orange-600 text-white rounded-md px-6 py-3 focus:outline-none focus:ring-2 focus:ring-orange-500 font-semibold">Print Report</button>
        </div>
    </div>

<script>
let contacts = [];
let editingIndex = null;

const contactForm = document.getElementById('contactForm');
const contactList = document.getElementById('contactList');
const contactTableBody = document.getElementById('contactTableBody');
const saveContactButton = document.getElementById('saveContact');
const updateContactButton = document.getElementById('updateContact');
const cancelUpdateButton = document.getElementById('cancelUpdate');

// Get form input elements
const fullNameInput = document.getElementById('full_names');
const phoneNumberInput = document.getElementById('phone_number');
const emailAddressInput = document.getElementById('email_address');
const idNumberInput = document.getElementById('id_number');
const dateOfBirthInput = document.getElementById('date_of_birth');
const genderInput = document.getElementById('gender');
const countyInput = document.getElementById('county');

// Get error message elements
const fullNameError = document.getElementById('full_names-error');
const phoneNumberError = document.getElementById('phone_number-error');
const emailAddressError = document.getElementById('email_address-error');
const idNumberError = document.getElementById('id_number-error');
const dateOfBirthError = document.getElementById('date_of_birth-error');
const genderError = document.getElementById('gender-error');
const countyError = document.getElementById('county-error');

// Function to validate the contact form
function validateForm() {
    let isValid = true;

    if (!fullNameInput.value.trim()) {
        fullNameError.textContent = 'Full names are required';
        isValid = false;
    } else {
        fullNameError.textContent = '';
    }

    if (!emailAddressInput.value.trim()) {
        emailAddressError.textContent = 'Email address is required';
        isValid = false;
    } else if (!isValidEmail(emailAddressInput.value.trim())) {
        emailAddressError.textContent = 'Invalid email address';
        isValid = false;
    } else {
        emailAddressError.textContent = '';
    }

     if (!idNumberInput.value.trim()) {
        idNumberError.textContent = 'ID Number is required';
        isValid = false;
    } else {
        idNumberError.textContent = '';
    }

    if (!dateOfBirthInput.value) {
        dateOfBirthError.textContent = 'Date of birth is required';
        isValid = false;
    } else {
        dateOfBirthError.textContent = '';
    }

    if (!genderInput.value) {
        genderError.textContent = 'Gender is required';
        isValid = false;
    } else {
        genderError.textContent = '';
    }

    if (!countyInput.value.trim()) {
        countyError.textContent = 'County of residence is required';
        isValid = false;
    } else {
        countyError.textContent = '';
    }

    return isValid;
}

function isValidEmail(email) {
    // Basic email validation regex
    const emailRegex = /^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$/;
    return emailRegex.test(email);
}

// Function to add a new contact or update an existing contact
function saveContact() {
    if (!validateForm()) {
        return; // Stop if the form is not valid
    }

    const contact = {
        full_names: fullNameInput.value,
        phone_number: phoneNumberInput.value,
        email_address: emailAddressInput.value,
        id_number: idNumberInput.value,
        date_of_birth: dateOfBirthInput.value,
        gender: genderInput.value,
        county: countyInput.value,
    };

    if (editingIndex !== null) {
        // Update existing contact
        contacts[editingIndex] = contact;
        editingIndex = null;
        saveContactButton.textContent = 'Save Contact';
        updateContactButton.style.display = 'none';
        cancelUpdateButton.style.display = 'none';
    } else {
        // Add new contact
        contacts.push(contact);
    }

    displayContacts();
    clearForm();
}

// Function to display the list of contacts
function displayContacts() {
    if (contacts.length === 0) {
        contactTableBody.innerHTML = '<tr><td colspan="8" class="px-4 py-2 text-center text-gray-500">No contacts available</td></tr>';
        return;
    }

    let html = '';
    contacts.forEach((contact, index) => {
        html += `
            <tr>
                <td class="px-4 py-2 border-b border-gray-200">${contact.full_names}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.phone_number}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.email_address}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.id_number}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.date_of_birth}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.gender}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.county}</td>
                <td class="px-4 py-2 border-b border-gray-200 text-right">
                    <button class="action-button edit-button" data-index="${index}">Edit</button>
                    <button class="action-button delete-button" data-index="${index}">Delete</button>
                </td>
            </tr>
        `;
    });
    contactTableBody.innerHTML = html;

    // Add event listeners to the new buttons
    const editButtons = document.querySelectorAll('.edit-button');
    const deleteButtons = document.querySelectorAll('.delete-button');

    editButtons.forEach(button => {
        button.addEventListener('click', editContact);
    });

    deleteButtons.forEach(button => {
        button.addEventListener('click', deleteContact);
    });
}

// Function to edit a contact
function editContact(event) {
    const index = event.target.dataset.index;
    const contact = contacts[index];
    editingIndex = index;

    fullNameInput.value = contact.full_names;
    phoneNumberInput.value = contact.phone_number;
    emailAddressInput.value = contact.email_address;
    idNumberInput.value = contact.id_number;
    dateOfBirthInput.value = contact.date_of_birth;
    genderInput.value = contact.gender;
    countyInput.value = contact.county;

    saveContactButton.textContent = 'Update Contact';
    updateContactButton.style.display = 'inline-block';
    cancelUpdateButton.style.display = 'inline-block';

    // Scroll to form
    document.getElementById("contactForm").scrollIntoView({ behavior: 'smooth' });
}

// Function to cancel update
function cancelUpdate() {
    editingIndex = null;
    saveContactButton.textContent = 'Save Contact';
    updateContactButton.style.display = 'none';
    cancelUpdateButton.style.display = 'none';
    clearForm();
}

// Function to delete a contact
function deleteContact(event) {
    const index = event.target.dataset.index;
    contacts.splice(index, 1);
    displayContacts();
}

// Function to clear the form
function clearForm() {
    editingIndex = null;
    contactForm.reset();
    fullNameError.textContent = '';
    phoneNumberError.textContent = '';
    emailAddressError.textContent = '';
    idNumberError.textContent = '';
    dateOfBirthError.textContent = '';
    genderError.textContent = '';
    countyError.textContent = '';
    saveContactButton.textContent = 'Save Contact';
    updateContactButton.style.display = 'none';
    cancelUpdateButton.style.display = 'none';
}

// Event Listeners
contactForm.addEventListener('submit', (event) => {
    event.preventDefault();
    saveContact();
});

updateContactButton.addEventListener('click', (event) => {
    event.preventDefault();
    saveContact();
});

cancelUpdateButton.addEventListener('click', (event) => {
    event.preventDefault();
    cancelUpdate();
});

// Initial display of contacts
displayContacts();

// ----------------------------------------------------------------------
// Admin Dashboard Functionality (Placeholder)
// ----------------------------------------------------------------------

function displayDashboard() {
    // Placeholder data for gender and county statistics
    const genderStats = {
        Male: 50,
        Female: 30,
        Other: 20,
    };

    const countyStats = {
        Nairobi: 40,
        Kisumu: 25,
        Mombasa: 15,
        Nakuru: 10,
        Eldoret: 10,
    };

    const recentContacts = [
        { full_names: 'John Doe', phone_number: '1234567890', email_address: 'john.doe@example.com', date_of_birth: '1990-05-15', county: 'Nairobi' },
        { full_names: 'Jane Smith', phone_number: '9876543210', email_address: 'jane.smith@example.com', date_of_birth: '1985-10-22', county: 'Kisumu' },
        { full_names: 'Peter Jones', phone_number: '5551234567', email_address: 'peter.jones@example.com', date_of_birth: '2002-03-08', county: 'Mombasa' },
        { full_names: 'Mary Brown', phone_number: '1112223334', email_address: 'mary.brown@example.com', date_of_birth: '1998-07-01', county: 'Nakuru' },
        { full_names: 'David Wilson', phone_number: '9998887776', email_address: 'david.wilson@example.com', date_of_birth: '1993-12-19', county: 'Eldoret' },
    ];

    // Display Gender Statistics
    const genderStatsDiv = document.getElementById('genderStats');
    let genderStatsHTML = '';
    for (const [gender, count] of Object.entries(genderStats)) {
        genderStatsHTML += `<p>${gender}: ${count}</p>`;
    }
    genderStatsDiv.innerHTML = genderStatsHTML;

    // Display County Statistics
    const countyStatsDiv = document.getElementById('countyStats');
    let countyStatsHTML = '';
    for (const [county, count] of Object.entries(countyStats)) {
        countyStatsHTML += `<p>${county}: ${count}</p>`;
    }
    countyStatsDiv.innerHTML = countyStatsHTML;

    // Display Recent Contacts
    const recentContactsTableBody = document.getElementById('recentContactsTableBody');
    let recentContactsHTML = '';
    recentContacts.forEach(contact => {
        recentContactsHTML += `
            <tr>
                <td class="px-4 py-2 border-b border-gray-200">${contact.full_names}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.phone_number}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.email_address}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.date_of_birth}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.county}</td>
            </tr>
        `;
    });
    recentContactsTableBody.innerHTML = recentContactsHTML;
}

// ----------------------------------------------------------------------
// Printable Report Functionality (Placeholder)
// ----------------------------------------------------------------------

const countyFilter = document.getElementById('countyFilter');
const reportTableBody = document.getElementById('reportTableBody');

function generateReport() {
    const selectedCounty = countyFilter.value;

    // In a real application, you would fetch the filtered data from the server.
    // For this example, we'll filter the existing 'contacts' array.
    let filteredContacts = [];
    if (selectedCounty) {
        filteredContacts = contacts.filter(contact => contact.county === selectedCounty);
    } else {
        filteredContacts = contacts;
    }

    if (filteredContacts.length === 0) {
        reportTableBody.innerHTML = '<tr><td colspan="7" class="px-4 py-2 text-center text-gray-500">No contacts available for the selected county</td></tr>';
        return;
    }

    let reportHTML = '';
    filteredContacts.forEach(contact => {
        reportHTML += `
            <tr>
                <td class="px-4 py-2 border-b border-gray-200">${contact.full_names}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.phone_number}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.email_address}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.id_number}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.date_of_birth}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.gender}</td>
                <td class="px-4 py-2 border-b border-gray-200">${contact.county}</td>
            </tr>
        `;
    });
    reportTableBody.innerHTML = reportHTML;
}

// Populate the county filter dropdown
function populateCountyFilter() {
    const counties = [...new Set(contacts.map(contact => contact.county))]; // Get unique counties
    counties.forEach(county => {
        const option = document.createElement('option');
        option.value = county;
        option.textContent = county;
        countyFilter.appendChild(option);
    });
}

// Event listener for the county filter
countyFilter.addEventListener('change', generateReport);

// Call functions to display data
displayDashboard();
populateCountyFilter();
generateReport(); // Initial report display

</script>
</body>
</html>
