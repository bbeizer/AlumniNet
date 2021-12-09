### Challenges

Over the course of this semester, we encountered many challenges in developing our application.

First, because many of us were new to using ruby, we encountered many small errors, which we had to ask for help to fix.

For example, when developing a new feature, we would often get errors such as "Nil Method" when we try to implement certain actions.


# Posts and Conversations

Posts were difficult to implement at first, but by following a tutorial for ruby and rails implementation, we were able to successfully implement them.

# Stimulus Reflex

Some of us experienced issues when trying to develop the application after trying to do the Stimulus Reflex assignment. For example, some of us would get the following error:
"Active Record::ConnectionNotEstablished".  This error eventually disappeared after we uninstalled Stimulus Reflex.

# Server Connections

We also ran into some problems when trying to implement posts where we would receive a "cannot connect to server" error.  Fortunately, by following the assistance of some of the
TAs and by running the following code, we were able to fix this issue:

```
$ sudo apt install redis-server
$ yarn add redis
$ redis-server
```
