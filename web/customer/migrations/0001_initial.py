# Generated by Django 4.0.1 on 2022-01-10 13:15

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Customer',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30)),
                ('sex', models.CharField(default='F', max_length=2)),
                ('birthday', models.DateField()),
                ('email', models.EmailField(blank=True, default='', max_length=70)),
                ('phone', models.CharField(blank=True, default='', max_length=10)),
                ('address', models.CharField(blank=True, default='', max_length=200)),
                ('password', models.CharField(max_length=100)),
                ('create_date', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'customer',
            },
        ),
    ]
