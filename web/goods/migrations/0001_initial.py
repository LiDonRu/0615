# Generated by Django 3.2.8 on 2022-05-17 11:24

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Goods',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('platform', models.CharField(max_length=30)),
                ('name', models.CharField(max_length=200)),
                ('price', models.IntegerField()),
                ('photo_url', models.CharField(max_length=255)),
                ('goods_url', models.CharField(max_length=255)),
                ('items', models.IntegerField()),
                ('create_date', models.DateField(auto_now_add=True)),
            ],
            options={
                'db_table': 'goods',
            },
        ),
        migrations.CreateModel(
            name='GoodsItems',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('itemName', models.CharField(max_length=30)),
            ],
            options={
                'db_table': 'items',
            },
        ),
    ]
