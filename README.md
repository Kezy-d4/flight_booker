# Flight Booker

Flight booker allows users to search for available flights by specific criteria
before choosing a flight to book for an arbitrary number of passengers. The app
was developed for the The Odin Project curriculum's Ruby on Rails course.
see the [project assignment](https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker)
at The Odin Project. Additionally, see my [data model plan](data-model-plan.txt)
which provides a high-level overview of the app's data architecture. Furthermore,
you may find it helpful to browse the
[flights and airports seeded in the database](db/seeds.rb) to guide your search
criteria. Finally, the app is [deployed live](https://flight-booker-web-service.onrender.com/)
for you to interact with.

The primary purpose of this project was to practice with advanced forms features
of Ruby on Rails, including nested data and prepopulated input fields. UI, UX,
and dynamic interfaces were not a priority. For example, the interface does not
dynamically prevent the user from selecting an arrival airport that is identical
to the selected departure airport, nor does it dynamically update the departure
date select options according to the selected airports. These dynamic UX features
would require javascript to implement and were out of the scope of this project.
Additional features such as a booking search interface and booking management were
also omitted in favor of meeting the project requirements.

## Installation

To install the app locally, you will need Rails and Git installed on a Unix-like
system, then follow these steps:

1. `git clone` the repo locally:

```bash
git clone git@github.com:Kezy-d4/flight_booker.git
```

2. `cd` into your cloned repo:

```bash
cd flight_booker
```

3. Install gem dependencies and Ruby version:

```bash
bundle install
rbenv install
```

4. Create, seed, and migrate the database:

```bash
bin/rails db:setup
bin/rails db:migrate
```

5. Start the server:

```bash
bin/rails s
```

6. Navigate to localhost:3000 in your browser
