CUDA_VISIBLE_DEVICES="0,1,2,3,4,5,6,7" python -m torch.distributed.launch --nproc_per_node 8 submit_ddp.py \
  --model dsp \
  --loss dsp \
  --features_dir data_argo/features/ \
  --obs_len 20 \
  --pred_len 30 \
  --use_cuda True \
  --model_path saved_models/ckpt_dsp_epoch27.tar \
  --adv_cfg_path config.dsp_cfg \
  --submitter submitters.submitter_argo_dsp_ddp