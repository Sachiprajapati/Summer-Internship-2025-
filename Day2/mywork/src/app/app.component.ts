import { Component } from '@angular/core';
import { FormControl, ReactiveFormsModule } from '@angular/forms';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [ReactiveFormsModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  name = new FormControl();
  password = new FormControl();
  displayValue()
  {
    console.log(this.name.value,this.password.value);
  }
  setValues(){
    this.name.setValue('sachi');
    this.password.setValue('sachi384')
  }
}
