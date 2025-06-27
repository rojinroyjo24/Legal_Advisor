# Legal Advisor

Legal Advisor is a comprehensive web-based platform designed to streamline legal case management and connect users, advocates, and administrators in a single system. The project features an AI-powered chatbot for legal queries, user and advocate management, case tracking, and secure payment integration.

## Features

- **AI Chatbot**: Provides instant responses to legal queries using a trained deep learning model.
- **User Management**: Registration, authentication, and profile management for users and advocates.
- **Case Management**: Users can add cases, track status, and communicate with advocates.
- **Advocate Portal**: Advocates can manage case requests, update case statuses, and interact with users.
- **Admin Dashboard**: Administrators can manage users, advocates, case categories, IPC sections, and feedback.
- **Payment Integration**: Secure payment options for case-related transactions.
- **Feedback System**: Users and advocates can submit feedback and ratings.

## Technologies Used

- **Backend**: Python, Django, MySQL
- **Frontend**: HTML5, CSS3, Bootstrap, JavaScript
- **AI/ML**: TensorFlow, NLTK (for chatbot)

## Directory Structure

- `LegalAdvisor/` - Django project core files
- `User/` - User-related views and templates
- `Advocate/` - Advocate-related views and templates
- `Administrator/` - Admin-related views and templates
- `Templates/` - HTML templates for all user types
- `static/` - Static assets (CSS, JS, images)
- `db/` - Database-related files
- `chatgui.py` - Chatbot GUI application
- `train_chatbot.py` - Chatbot training script
- `intents.json` - Chatbot intents and responses

## Setup Instructions

1. **Clone the repository**
   ```
   git clone https://github.com/rojinroyjo24/Legal_Advisor.git
   cd LegalAdvisor
   ```
2. **Create and activate a virtual environment**
   ```
   python -m venv venv
   venv\Scripts\activate  # On Windows
   source venv/bin/activate  # On Linux/Mac
   ```
3. **Install dependencies**
   ```
   pip install -r requirements.txt
   ```
4. **Database Setup**
   - Use the provided `legal_advisor.sql` or `db.sqlite3` for initial data.
   - Update database settings in `LegalAdvisor/settings.py` if needed.
5. **Run Migrations**
   ```
   python manage.py migrate
   ```
6. **Run the Server**
   ```
   python manage.py runserver
   ```
7. **Chatbot**
   - To use the chatbot GUI, run:
   ```
   python chatgui.py
   ```

## Usage

- Register as a user or advocate.
- Users can add cases, track status, and chat with the AI chatbot for legal help.
- Advocates can manage cases and interact with users.
- Admins manage the platform, users, and content.

## License

This project is open source and available under the MIT License.

## Contact

For questions or suggestions, please contact the project maintainer via the [GitHub repository](https://github.com/rojinroyjo24/Legal_Advisor). 