<?php

namespace App\View\Components;

use Closure;
use Illuminate\View\Component;
use Illuminate\Contracts\View\View;

class input extends Component
{
    /**
     * Create a new component instance.
     */

    public $label;  
    public $type;
    public $name;
    public $placeholder;
    public $var;

    public function __construct($label, $type, $name, $placeholder, $var='')
    {
        $this->label = $label;
        $this->type = $type;
        $this->name = $name;
        $this->placeholder = $placeholder;
        $this->var = $var;
    }

    /**
     * Get the view / contents that represent the component.
     */
    public function render(): View|Closure|string
    {
        return view('components.input');
    }
}
