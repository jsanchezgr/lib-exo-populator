=====
Usage
=====

To use exo_populator in a project, add it to your `INSTALLED_APPS`:

.. code-block:: python

    INSTALLED_APPS = (
        ...
        'populate.apps.PopulateConfig',
        ...
    )

Add exo_populator's URL patterns:

.. code-block:: python

    from populate import urls as populate_urls


    urlpatterns = [
        ...
        url(r'^', include(populate_urls)),
        ...
    ]
