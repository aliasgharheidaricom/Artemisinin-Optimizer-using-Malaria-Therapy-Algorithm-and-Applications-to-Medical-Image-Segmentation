# Artemisinin Optimization (AO) based on Malaria Therapy: Algorithm and Applications to Medical Image Segmentation

In this section, we discuss the application of the Artemisinin Optimization (AO) algorithm based on Malaria Therapy in the context of medical image segmentation, as presented in our research paper. The AO algorithm is employed in a Multi-Threshold Image Segmentation (MTIS) model, enhancing the segmentation of histopathology microscopy images of breast tissues stained with H&E.

## Multi-Threshold Image Segmentation (MTIS)

MTIS is a powerful method for partitioning an image into distinct regions using one or more thresholds. Our approach combines non-local mean filtering, 2D histograms, Kapur entropy, and the AO algorithm based on Malaria Therapy. This combination addresses challenges posed by images with multiple objects or discontinuous color and brightness variations.

The MTIS process involves the following steps:

1. **Preprocessing:**
   - Transform the input image into grayscale.
   - Apply non-local mean filtering to reduce noise.

2. **Threshold Selection:**
   - Construct a 2D histogram.
   - Use Kapur's entropy to calculate information content for different threshold combinations.
   - Utilize the AO algorithm based on Malaria Therapy to maximize entropy, optimizing information preservation.

3. **Segmentation:**
   - Apply the optimal threshold set to segment the image.

## Experimental Setup

To evaluate the segmentation performance, we conducted experiments on breast cancer pathology images sourced from the Affiliated Hospital of Wenzhou Medical University. We used 15 breast cancer pathology images for segmentation evaluation. The objective was to assess the consistency and effectiveness of the AO-based MTIS system across different images. Additionally, we aimed to evaluate the AO's ability to select optimal thresholds for diverse images.

## Segmentation Experiments

We conducted segmentation experiments using Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), and Feature Similarity Index (FSIM) as evaluation metrics. The mean and variance of these metrics were analyzed, and statistical tests using WSRT and FT were performed.

### Experimental Conditions

- Number of iterations: 2000
- Image dimensions: 480x270 pixels
- Solution set size: 30 search agents
- Each algorithm independently run 30 times.

### Results

The segmentation results of the AO algorithm based on Malaria Therapy were compared with other algorithms using the mentioned metrics. For a visual overview of the MTIS operation process, refer to the flowchart presented in Figure 13.

Feel free to explore the detailed results and findings in the paper for a comprehensive understanding of the AO algorithm's performance in medical image segmentation.
