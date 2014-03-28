Oolong
======

A lightweight Coffeescript DSL to create DOM elements and bind them to plain objects.

Oolong  extends the concept of the excellent HTML-generating DSL [Teacup](https://github.com/goodeggs/teacup).  It is different though in that instead of generating HTML text it generates DOM elements directly. This has been shown to be more efficient than using text as an intermediate language.  

The other big difference is that it implements a real-time bi-directional binding between plain old javascript objects (POJOs) and the DOM. This feature is kept to a bare-bones simple model that provides no other features.  The intention is to later add other features on top of this core to implement a more featured framework like Knockout, React, or Angular.  One can think of Oolong as the opposite of Backbone since Backbone has no binding or built-in templating as Oolong does but offers all other features.  The possibility of using Backbone with Oolong has not been studied.

Like other good binding frameworks Oolong keeps a shadow DOM that is only applied to the real DOM at critical times.  This offers improved efficiencies over constant manipulation of the DOM.  One unigue aspect of the Oolong shadow DOM is that it consists of real DOM element objects.  It is known that DOM elements not attached to the real DOM are more efficiently managed than attached ones.

Oolong also provides components similar to React components but much simpler. All subtrees of the DOM are actually components that can be easily reused.

Oolong supports scopes for bound variables as other binding frameworks do. The bound variable names just need to be included in an array for each component. This array specifies the scope. Inheritance and closures are fully supported.

Referencing bound variables in the template requires no special syntax.  All usages of a bound variable are automatically synchronized.  When bound variables change only the shadow elements (components) that are affected are regenerated.

# Sample Code

	{comp, input} = Oolong
	scope = ['firstName', 'lastName']
	
	nameField = comp scope, ->
		input id: 'name', type: 'text', value: firstName + ' ' + lastName
	
	Oolong.attach 'body', nameField # nothing appears in body
	
	firstName = 'Hello'; lastName = 'World'  # input field appears containing "Hello World"

# Status

Just a twinkle in my eye for now.  Development will begin soon.

#Standard MIT license
