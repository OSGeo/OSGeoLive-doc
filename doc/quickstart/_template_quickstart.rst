:Author: Felicity Brand
:Version: osgeolive14.0draft
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_slug@
@OSGEO_KIND_slug@

********************************************************************************
@NAME_slug@ Quickstart
********************************************************************************

For more information about how to write this quickstart, see the 'How to document the quickstart file' on the osgeo wiki: https://trac.osgeo.org/osgeolive/wiki/How%20to%20document%20the%20quickstart%20file

.. Note:: Writing tip: Overview section
   This section is required and has no heading. Start with a sentence describing what the application is and does. Next, describe what will be covered in the Quickstart. 
   
   Choose a few features to show. If you're showing one or two things, write that in sentence format. If it's three or more, use a bullet list. 
   
   Mention any prerequisites that are required to complete the Quickstart, for example, internet connection or data to test with.

.. contents:: Contents
   :local:

.. Note:: Writing tip: Contents list 
   Use headings in your document to automatically generate a table of contents. The headings should start with verbs (action words), and should be the same or similar to what you have said the Quickstart will cover.

Start application name
======================
.. Note:: Writing Tip:
   The heading title for the first section is "Start application name". Use Sphinx inline markup :menuselection: for selecting the application from the Start menu or the desktop.

   If there is more than one step to get running with the application, use numbered steps. If it is only one step, use sentence format.

From the Start menu, choose :menuselection:`Geospatial --> Desktop GIS --> application name`. The application will take a few moments to start up.

   .. image:: /images/projects/<slug>/image_name.png
   :scale: 70 %

.. Note:: Writing Tip:
   Include a screenshot here of the UI. Use a scale of 50% from a 1024x768 display (preferred) or 70% from a 800x600 display. Markup the graphic with red circles to highlight any particular areas of note on the user interface (if required).
   Store images here:
   https://github.com/OSGeo/OSGeoLive-doc/tree/master/images/projects/1024x768/


Procedure
=========
 
.. Note:: Writing Tip: Use numbered steps to describe what to do (the hash symbol renders numbered steps). Steps start with a verb (action word). 
   
   Include only one action per step. A description of the expected result is not a new step. Refer to the Google Developer Style guide if you need guidance: ​https://developers.google.com/style
   
   Use Sphinx inline markup such as :guilabel: for buttons and field names; and :menuselection: for selecting menu items. Also refer to this page to describe elements on the UI: https://developers.google.com/style/ui-elements
   
   Use sub-headings for nested procedures if required. Use code blocks to describe interactions with the command line.
   
   Images - include as many images as the user is about to experience. The reader should be able to read the quickstart without running the software, and understand from the screenshots what will happen.
   
#. Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
#. Mauris eget dui vitae estsodales consequat eget vel risus.
#. Praesent pretium mauris id porta convallis.   
   
::

   Code starts here, 
   More code

.. Note:: Writing Tip: Notes are optional. You can use them to provide descriptions and background information without getting in the way of instructions.

.. Tip:: Writing Tip: Tips are optional. You can use them to provide extra information or other ways of performing an action like keyboard shortcuts or drag and drop.


Things to try
=============
.. Note:: Writing tip:
  This section is optional. Suggest one or several activities for people to try out on their own. It could be something very specific that is easily achievable, or it could be a bit of a challenge that involves a small bit of research (limited to something that can be found in documentation packaged on OSGeoLive.

Here are some additional challenges for you to try:

* Try Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
* Mauris eget dui vitae estsodales consequat eget vel risus.
* Try Praesent pretium mauris id porta convallis.

What next?
==========
.. Note:: Writing tip
   This section is required. Provide links to any further documentation or tutorials. If your project has no further documentation, include a link to your project's website or wiki or include a contact email or mailing list to join.

Check out these other resources about this application.

* The documentation `link title <http://this/is/the/external_link.html>`__
* Wiki
* Website


For more information about how to write this quickstart, see the 'How to document the quickstart file' on the osgeo wiki: https://trac.osgeo.org/osgeolive/wiki/How%20to%20document%20the%20quickstart%20file