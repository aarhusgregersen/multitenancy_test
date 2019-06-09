# README

Initialized application using Devise & acts_as_tenant.

Using those two I created a custom filter at the Application Controller level, that finds the current users associated account_id and scopes all content based on that.
If no current user is found or if this user doesn't have an account associated, an error is returned.

Simple solution to preventing data overflow while having several logins on a platform.