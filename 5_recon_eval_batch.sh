#!/bin/sh
cd reconstruction
# 5.1. Feature extraction for evaluation
python feature_extraction_melception_from_reconsound.py config/recon_vggsound_fmriprep_rep4_500voxel_vggishish_allunits_fastl2lir_alpha100.yaml
python feature_extraction_melception_from_reconsound.py config/recon_vggsound_attention_fmriprep_rep4_500voxel_vggishish_allunits_fastl2lir_alpha100.yaml
# 5.1. Evaluation
python recon_eval.py config/recon_vggsound_fmriprep_rep4_500voxel_vggishish_allunits_fastl2lir_alpha100.yaml
python recon_eval_attention.py config/recon_vggsound_attention_fmriprep_rep4_500voxel_vggishish_allunits_fastl2lir_alpha100.yaml