## README

This is an attempt at knocking out the WIC project in a pure Rails fashion.

## TODO

### Technical
- Add authentication checks
- Build relationships
  - User-to-user (connections/follows)
  - Event-to-user (event creation)
  - User-to-event (event attendence)
- Remove user routes and endpoints that are extraneous after Devise installation
- Add icons (FontAwesome?)
- Build relationship management (ability to block other users)
- Format Devise-generated views
- Implement admin/superadmin permissions
- Connect image saving and display tools
- All-around styling fixes
- Pull in Vanessa's forum stuff
- Improve CSV export
  - File name
  - Specific fields
- Improve search
  - Search across other fields
  - Render different views for different fields; name match, city match, etc.

### Non-technical
- Discuss this with TDE folks
- Explain all this:
  - Ruby version
  - System dependencies
  - Configuration
  - Database creation
  - Database initialization
  - How to run the test suite
  - Services (job queues, cache servers, search engines, etc.)
  - Deployment instructions
