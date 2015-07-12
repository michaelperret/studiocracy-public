# README

* See onboarding guides here: https://drive.google.com/folderview?id=0BxTarWOIystqflByWkkzSy1VQTNUS2xpT2JsUWlxTThQdVpFdHdRWUdqVXNadHdab0dXQVk&usp=sharing

* Rails 4.2.0
* Ruby 2.2.1
* Much of the work on this project is done in RubyMine, which you can grab with a student license here: https://www.jetbrains.com/student/

* Running on PostgreSQL -- install Postgres.app to run database locally on Mac

# How to Contribute
* Read and follow this SO answer about the Github workflow: http://stackoverflow.com/questions/20956154/whats-the-workflow-to-contribute-to-an-open-source-project-using-git-pull-reque

#Gem notes:
* Uses friendly_id to generate string URL tails. Never call user.id, only user.friendly.id
* Uses devise for user authentication
* Users paperclip 4.2.1 for media uploads
* Uses Stripe gem. Stripe keys in file are dummy keys. Real keys will be passed into environment when server starts.

# To deploy for testing

* Clone repository.
* Ensure you have rails, rake, bundler, and ruby installed (look up install guide)
* Run Postgres
* Run rake db:migrate in command line
* run rails s in folder root
* go to http://localhost:3000/


#Contact and Community

* Contact julian.deocampo@gmail.com for Slack access or for troubleshooting

=======
# studiocracy
Social marketplace for artists to connect with their communities and and have their work appreciated.
