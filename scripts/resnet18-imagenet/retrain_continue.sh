CUDA_VISIBLE_DEVICES=0 python main_c.py \
--dataset imagenet \
--data /data3/imagenet-data/raw-data \
--arch resnet18 \
--depth 18 \
--lr 0.1 \
--epochs 90 \
--schedule 30 60 \
--batch-size 128 \
--test-batch-size 64 \
--save ./EBTrain-ImageNet/ResNet18/retrain_1011_0.1 \
--momentum 0.9 \
--sparsity-regularization \
--scratch ./EBTrain-ImageNet/ResNet18/pruned_1011_0.1/pruned.pth.tar \
--start-epoch 11