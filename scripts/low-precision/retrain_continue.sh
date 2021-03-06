CUDA_VISIBLE_DEVICES=0 python main_c_lp.py \
--dataset cifar10 \
--arch vgg \
--depth 16 \
--lr 0.1 \
--epochs 160 \
--schedule 80 120 \
--batch-size 256 \
--test-batch-size 128 \
--scratch ./lp_baseline/vgg16-cifar10/pruned_3032_0.3/pruned.pth.tar \
--save ./lp_baseline/vgg16-cifar10/lp_retrain_3032_0.3 \
--start-epoch 32 \
--momentum 0.9 \
--sparsity-regularization \
--swa True \
--swa_start 140 \
--wl-weight 8 \
--wl-grad 8 \
--wl-activate 8 \
--wl-error 8 \
--wl-momentum 8 \
--rounding stochastic