# Module 04 Notes

## Automated Testing

Runs tests automatically without manual intervention.

---

## NUnit

Framework used for unit testing in .NET.

Common Attributes

- Test
- TestFixture
- SetUp
- TearDown
- TestCase
- Ignore

---

## Assertions

Used to compare expected and actual values.

Example

Assert.That(actual, Is.EqualTo(expected));

---

## Exception Testing

Assert.Throws<Exception>()

---

## Dependency Injection

Supplies dependencies externally to make classes loosely coupled.

---

## Moq

Mocking framework for .NET.

Used to create fake implementations of interfaces.

---

## Verify

Checks whether mocked methods are invoked.

---

## Key Takeaways

- Automated testing improves software quality.
- NUnit simplifies writing and running unit tests.
- Moq isolates external dependencies.
- Dependency Injection makes code easier to test and maintain.