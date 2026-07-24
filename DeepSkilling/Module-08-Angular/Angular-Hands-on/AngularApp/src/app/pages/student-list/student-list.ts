import { Component } from '@angular/core';
import { StudentService } from '../../services/student';

@Component({
  selector: 'app-student-list',
  standalone: true,
  imports: [],
  templateUrl: './student-list.html',
  styleUrl: './student-list.css'
})
export class StudentList {

  students: string[] = [];

  constructor(private studentService: StudentService) {
    this.students = this.studentService.getStudents();
  }
}