import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class StudentService {

  students: string[] = [
    'Alice',
    'Bob',
    'Charlie'
  ];

  constructor() { }

  getStudents(): string[] {
    return this.students;
  }
}