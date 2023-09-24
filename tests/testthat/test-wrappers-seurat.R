library(vitessceAnalysisR)
library(Seurat)

test_that("SeuratWrapper create_cells_list", {
  pbmc.data <- Read10X(data.dir = "seurat/filtered_gene_bc_matrices/hg19")

  pbmc <- CreateSeuratObject(counts = pbmc.data, project = "pbmc3k", min.cells = 3, min.features = 200)
  pbmc[["percent.mt"]] <- PercentageFeatureSet(pbmc, pattern = "^MT-")
  pbmc <- subset(pbmc, subset = nFeature_RNA > 200 & nFeature_RNA < 2500 & percent.mt < 5)
  pbmc <- NormalizeData(pbmc, normalization.method = "LogNormalize", scale.factor = 10000)
  pbmc <- FindVariableFeatures(pbmc, selection.method = "vst", nfeatures = 2000)
  all.genes <- rownames(pbmc)
  pbmc <- ScaleData(pbmc, features = all.genes)
  pbmc <- RunPCA(pbmc, features = VariableFeatures(object = pbmc))
  pbmc <- FindNeighbors(pbmc, dims = 1:10)
  pbmc <- FindClusters(pbmc, resolution = 0.5)

  zarr_filepath <- file.path("seurat", "pbmc3k.zarr")

  success <- seurat_to_anndata_zarr(pbmc, out_path = zarr_filepath, assay = "RNA")
  
  expect_equal(success, TRUE)
})
