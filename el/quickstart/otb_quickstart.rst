:Author: OSGeo Live
:Author: Manuel Grizonnet
:Version: osgeo-live4.0
:License: Creative Commons

.. _ossim-quickstart:
 
.. image:: ../../images/project_logos/logo-otb.png
  :scale: 80 %
  :alt: project logo
  :align: right

****************
OTB Quickstart 
****************

ORFEO Toolbox library (OTB) is a high performance library for image processing targeted on remote sensing.

This Quick Start describes how to:

  * Build a simple pipeline with OTB
  * Open raster images with the application monteverdi, perform segmentation (mean-shift clustering) and visualize the result

OTB library
===========

OTB is designed to read images, process them and write them to disk or view the result. In this tutorial, we are going to see how to read and write images and the basics of the pipeline system.

Start by including some necessary headers and with the usual main declaration::
      
      #include "otbImage.h" 
      #include "otbImageFileReader.h" 
      #include "otbStreamingImageFileWriter.h" 
      int main(int argc, char ⋆ argv[]) {

Declare the image as an otb::Image, the pixel type is declared as an unsigned char (one byte) and the image is specified as having two dimensions.::

        typedef otb::Image<unsigned char, 2> ImageType;

To read the image, we need an otb::ImageFileReader which is templated with the image type.::

   typedef otb::ImageFileReader<ImageType> ReaderType; 
   ReaderType::Pointer reader = ReaderType::New();

Then, we need an otb::StreamingImageFileWriter also templated with the image type.::

  typedef otb::StreamingImageFileWriter<ImageType> WriterType; 
  WriterType::Pointer writer = WriterType::New();

The filenames are passed as arguments to the program. We keep it simple for now and we don’t check their validity.::

  reader->SetFileName(argv[1]); 
  writer->SetFileName(argv[2]);

Now that we have all the elements, we connect the pipeline, pluging the output of the reader to the input of the writer.::

  writer->SetInput(reader->GetOutput());

And finally, we trigger the pipeline execution calling the Update() method on the last element of the pipeline. The last element will make sure to update all previous elements in the pipeline.::

  writer->Update(); 
 
  return EXIT_SUCCESS; 
  }

Monteverdi
===========

* Start Monteverdi from its icon from the directory "XXX" on the desktop 
* Select an raster image, using :menuselection:`File --> Open Dataset --> /home/user/otb/qb_RoadExtract.tif`
* Go to the :menuselection:`Filtering --> Mean Shift clustering`
* Select the input raster image (Reader0) from the input window selection
* Verify you can tune parameters of the segmentation and see the result on the region of interest by clicking on "Run"
* Select "Close" when you are satisfied by the result.
* In the main window, right click on the "Clustered Image" in the resulting dataset "MeanShift0" and select "Display in viewer" 

  .. image:: ../../images/screenshots/800x600/otb-mean_shift.png
     :scale: 100 %

For the full tutorial see the  `article`_.

.. _`article`: http://www.orfeo-toolbox.org/otb/monteverdi.html


What Next?
==========

* OTB Tutorials

  Follow the tutorials_ to learn more about OTB.

.. _tutorials: http://www.orfeo-toolbox.org/SoftwareGuide/SoftwareGuidepa2.html#x17-49000II

* Documentation on DVD

  See also the included documentation_ on this DVD.

.. _documentation: file:///usr/local/share/otb/

