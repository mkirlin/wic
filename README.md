## README

This is an attempt at knocking out the WIC project in a pure Rails fashion.

## TODO

### Code
- Infrastructure/Config
  - Implement mailer
  - Deploy to Heroku
- Features
  - Events
    - Only let organizers and admins edit events
    - Let users attend events
    - List user's upcoming events on home page
  - Users
    - Let users connect with other users
    - Let users contact each other somehow
    - Let users block other users
  - Authorization
    - Implement admin/superadmin permissions (Pundit)
      - Admins can edit users and events, and ban users
      - Superadmins can do everything admins can do, and they can promote users to admin and admins to superadmin
  - Image saving and display
    - Profile pictures
    - Event pictures
- Styling
  - Make all tables look nice/potentially remove them
  - Put user's attending events, created events, and connections events on the home page
  - Implement FontAwesome icons
  - Format Devise-generated views (implement new registration and login background image, because it is cool)

### Not Code
- Explain all this:
  - Ruby version
  - System dependencies
  - Configuration
  - Database creation
  - Database initialization
  - How to run the test suite
  - Services (job queues, cache servers, search engines, etc.)
  - Deployment instructions
