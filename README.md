# Flight Booker

Flight booker allows users to search for available flights by specific criteria
before choosing a flight to book for an arbitrary number of passengers. The app
was developed for the The Odin Project curriculum's Ruby on Rails course.
see the [project assignment](https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker)
at The Odin Project. Additionally, see my [data model plan](data-model-plan.txt)
which provides a high-level overview of the app's data architecture. Furthermore, you
may find it helpful to browse the [flights and airports seeded in the database](db/seeds.rb)
to guide your search criteria. Finally, the app is [deployed live]() on the web
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
