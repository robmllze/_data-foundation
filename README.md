# Data Module

## About

The [Foundation](https://github.com/robmllze/foundation) template is divided into several modules. This helps separate concerns and makes it easier to manage the codebase.

This is the Foundation's Data Module and defines the data structures for the front-end.

It comprises of the following:

- **Data Models**: Classes representing the data structures within the application.
- **Data Model Extensions**: Extensions that augment the functionality of the data classes.
- **Data Pool Extensions**: Extensions that provide filtering and sorting capabilities on sets of data models.
- **Data Types**: Enums that categorize raw data, aiding in identifying the appropriate mappers to convert this data into structured models.
- **Data Utils**: Flexible utilities designed for handling Models and Types.

## Notes

- Rename `_data-foundation` to `_data` before using it in your project.
- This module is designed to aid in the structuring of the front-end. It should not rely on any specialized packages and must remain as generic as possible.
