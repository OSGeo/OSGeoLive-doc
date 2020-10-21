:Author: Alexander Kotsev :Author: Daniele Francioli :Author: Marco Minghini
         :Reviewer: :Version: osgeolive14.0 :License: Creative Commons
         Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

@LOGO_inspire@ @OSGEO_KIND_re3gistry@

********************************************************************************
@NAME_re3gistry@ Quickstart
********************************************************************************

The Re3gistry 2 is a reusable open source solution for managing and sharing
"reference codes". It provides a consistent central access point where labels
and descriptions for reference codes can be easily browsed by humans and
retrieved by machines.  Reference codes are exchanged between applications to
uniquely reference some ‘thing’. They can be used to define sets of permissible
values for a data field or to provide a reference or context for the data being
exchanged. Examples are enumerations, controlled vocabularies, taxonomies,
thesauri or, simply, ‘lists of things’.  The Re3gistry 2 supports organisations
in managing and updating reference codes in a consistent way.

This Quick Start describes how to:

* Start and install the Re3gistry using the wizard (first start only)
* Manage data from the ``pgAdmin`` client.


.. contents:: Contents
  :local:

Start the Re3gistry
================================================================================

Choose *'Start Re3gistry'* from the :menuselection:`Geospatial --> Web Services
--> Re3gistry` menu.  The application will take a few moments to start up.
Firefox opens the *Re3gistry landing page* (you can also open this manually by
pointing your browser to http://localhost:8080/re3gistry2).

If this is the first start, the Re3gistry will launch the installation wizard.
This wizard will guide the user to the setup and first run of the tool.


* The first page is just an introductory description. Click on "continue".
* The "Registry manager" page allows you to define the account for the system
  administration (Registry manager). Insert a valid e-mail address and a
  password. Then click on "Save and continue".
* The next step allows you to choose between 2 options:

  * Installation: choose this option if you want to
    install the Re3gistry software for the first time and to create a registry
    from scratch.
  * Migration: choose this option if you want to upgrade a pre-existing
    Re3gistry instance. This option will keep your settings and content. Note
    that this option will only work on an existing instance running on Re3gistry
    version 1.3.X.

**Installation option**

In case the "Installation" option is chosen, the basic configuration for the new
registry will be requested.

* System languages: the system languages are the languages supported and handled
  by the Re3gistry 2. Note that you can select one or more system languages.
* Master language: the master language is the one used by the Re3gistry 2 to
  handle multilingualism. Note that this will require all content to be
  available in the chosen master language.
* Base URI: the base URI will be part of the public URL, generally this should
  match with your own domain name: `**http://example.com**/registry`
* Local ID: the local ID will be part of the public URL, generally the path
  following the domain name: `http://example.com/**registry**`
* Label: the label of the registry will be the ‘title’ of the Re3gistry 2
  instance. It will be shown in the registry’s landing page.
* Content summary: this text should shortly describe what would be available
  under your Re3gistry 2 instance. It will be shown in the registry’s landing
  page.

After filling all the information, click on "Save and continue".

The next step will present a summary of the information inserted. If all the
fields are correct, click on "Install" to begin the installation.  Once the
installation is finished, the user is redirected to the login page.

**Migration option**

In case the "Migration" option is chosen, the details of the database from the
existing Re3gistry installation are requested.

* Fill the requested fields and
* click the "Save and continue" button. You will then get a page containing a
  summary of the data retrieved from the existing instance of the Re3gistry.
* Click on "Install" to begin the migration. An information page will be shown.

Now you can close the browser and the system will notify you via e-mail using
the address specified in the "Registry manager" definition step.

Introduction to the Re3gistry 2
================================================================================

The Re3gistry editing interface allows to graphically manage the complete
life-cycle of reference codes, such as code lists, enumerations, controlled
vocabularies, taxonomies, thesauri or, simply, 'lists of things'.  If you choose
the "installation mode" from the wizard, the first time you log in to the
system, you will have an empty registry. You can then start populating it using
the tools provided by the editing interface.  If you choose the "migration mode"
from the wizard, you will find the registers imported from the older version of
the tool.

For detailed documentation on the editing interface, please read the `user
manual
<https://github.com/ec-jrc/re3gistry/blob/master/documentation/user-manual.md>`__.

Users, roles and groups
================================================================================

The Re3gistry 2 follows the `ISO 19135 Standard "Geographic information —
Procedures for item registration" <https://www.iso.org/standard/54721.html>`__.

The possible user roles that the Re3gistry 2 manages are:

#. Registry manager
#. Register owner
#. Register manager
#. Control body
#. Submitting organisations

The registry manager has the highest privileges in the system. This role can
perform three different tasks:

* Make any action on the reference codes.

  * The changes done to the reference codes need to undergo the approval
    workflow by obtaining the approval from the control body,

* Manage the structural elements of the system.
* Change and edit information related to the registry and the registers,
* Add new registers,
* Manage the fields of the registry, registers, reference codes.

  * These structural changes do not need to have the approval workflow, and

* Manage both users and groups.


What next?
================================================================================

This was just a very brief overview of the Re3gistry.  There is more information
in the demo installation and on the Re3gistry GitHub space.

* `User manual <https://github.com/ec-jrc/re3gistry/blob/master/documentation/user-manual.md>`__
* `Administrator manual <https://github.com/ec-jrc/re3gistry/blob/master/documentation/administrator-manual.md>`__
* `Developer manual <https://github.com/ec-jrc/re3gistry/blob/master/documentation/developer-manual.md>`__
