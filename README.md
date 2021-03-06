## README

This is an attempt at knocking out the WIC project in a pure Rails fashion.

## Local Development
- Run `docker-compose up` in the main directory, go to `http://localhost:9000`

## TODO

### Code
- Infrastructure/Config
  - Implement mailer
  - Deploy to Heroku
  - Set up AWS S3 for image storage, add info to encrypted secrets file
  - Add `RAILS_MASTER_KEY` env var to Heroku application
  - Update entrypoint script to allow for runnin in prod & dev environments
  - Improve local development environment (rerun is slow)(optional)
- Features
  - Events
    - Only let organizers and admins edit events
    - Let users attend events
    - List user's upcoming events on home page
    - Put datepicker and timepicker in event creation page
  - Users
    - Let users connect with other users
    - Let users contact each other somehow
    - Let users block other users
  - Authorization
    - Implement admin/superadmin permissions (Pundit)
      - Admins can edit users and events, and ban users
      - Superadmins can do everything admins can do, and they can promote users to admin and admins to superadmin
  - Image saving and display ([ActiveStorage](https://edgeguides.rubyonrails.org/active_storage_overview.html))
    - Profile pictures
    - Event pictures
- Styling
  - Make all tables look nice/potentially remove them
  - Make all forms look good
  - Format user profile
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
