<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Post;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategoryPostSeeder extends Seeder
{
    public function run()
    {
        Category::factory(5)->create()->each(function ($category) {
            Post::factory(rand(3, 7))->create(['category_id' => $category->id]);
        });
    }
}
