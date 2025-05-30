import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms'; 

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [FormsModule], 
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  name: string = '';
  password: string = '';

  displayValue() {
    console.log(this.name, this.password);
  }

  setValues() {
    this.name = 'sachi';
    this.password = 'sachi384';
  }
}
