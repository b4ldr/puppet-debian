# Reference

<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

### Classes

* [`debian`](#debian): preform basic constraints tests and configure variables
this class will be called automaticly

### Functions

* [`debian::codename`](#debiancodename): this function is just a simple alias to $facts['os']['name']['codename']
* [`debian::codename::compare`](#debiancodenamecompare): Test if the running debian codename against the codename passed using a specific operator
* [`debian::codename::eq`](#debiancodenameeq): Test if the running debian codename is equal to the codename passed
* [`debian::codename::ge`](#debiancodenamege): Test if the running debian codename is greater then or equal to the codename passed
* [`debian::codename::gt`](#debiancodenamegt): Test if the running debian codename is greater then the codename passed
* [`debian::codename::le`](#debiancodenamele): Test if the running debian codename is less then or equal to the codename passed
* [`debian::codename::lt`](#debiancodenamelt): Test if the running debian codname is less then the codname passed
* [`debian::codename::ne`](#debiancodenamene): Test if the running debian codename is not equal to the codename passed
* [`debian::codename::require`](#debiancodenamerequire): fail to compile if the running debian codename against the codename passed using a specific operator.

### Data types

* [`Debian::Codename`](#debiancodename): a type which can be used to validate debian and supported debian derivative codenames
* [`Debian::Codename::Debian`](#debiancodenamedebian): a type which can be used to validate debian codenames.  specifically ones
from the debian project and not including any debian derivatives

## Classes

### `debian`

preform basic constraints tests and configure variables
this class will be called automaticly

## Functions

### `debian::codename`

Type: Puppet Language

this function is just a simple alias to $facts['os']['name']['codename']

#### `debian::codename()`

The debian::codename function.

Returns: `String` $facts['os']['name']['codename']

### `debian::codename::compare`

Type: Puppet Language

Test if the running debian codename against the codename passed using a specific operator

#### Examples

##### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::compare('buster') == True
debian::codename::compare('stretch') == False
debian::codename::compare('stretch', '<') == False
debian::codename::compare('stretch', '>') == True
debian::codename::compare('buster', '>=') == True
debian::codename::compare('buster', '<=') == True
```

#### `debian::codename::compare(String $codename, Enum['==', '>=', '>', '<', '<=', '!='] $operator = '==')`

The debian::codename::compare function.

Returns: `Boolean` result of the comparison

##### Examples

###### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::compare('buster') == True
debian::codename::compare('stretch') == False
debian::codename::compare('stretch', '<') == False
debian::codename::compare('stretch', '>') == True
debian::codename::compare('buster', '>=') == True
debian::codename::compare('buster', '<=') == True
```

##### `codename`

Data type: `String`

the codename you want to test against

##### `operator`

Data type: `Enum['==', '>=', '>', '<', '<=', '!=']`

the comparison operator to us i.e
==, >=, >, <, <= or !=

### `debian::codename::eq`

Type: Puppet Language

Test if the running debian codename is equal to the codename passed

#### Examples

##### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::eq('buster') == True
debian::codename::eq('stretch') == False
```

#### `debian::codename::eq(String $codename)`

The debian::codename::eq function.

Returns: `Boolean` result of the comparison

##### Examples

###### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::eq('buster') == True
debian::codename::eq('stretch') == False
```

##### `codename`

Data type: `String`

the codename you want to test against

### `debian::codename::ge`

Type: Puppet Language

Test if the running debian codename is greater then or equal to the codename passed

#### Examples

##### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::ge('buster') == True
debian::codename::ge('stretch') == True
debian::codename::ge('bullseye') == False
```

#### `debian::codename::ge(String $codename)`

The debian::codename::ge function.

Returns: `Boolean` result of the comparison

##### Examples

###### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::ge('buster') == True
debian::codename::ge('stretch') == True
debian::codename::ge('bullseye') == False
```

##### `codename`

Data type: `String`

the codename you want to test against

### `debian::codename::gt`

Type: Puppet Language

Test if the running debian codename is greater then the codename passed

#### Examples

##### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::gt('buster') == False
debian::codename::gt('stretch') == True
debian::codename::gt('bullseye') == False
```

#### `debian::codename::gt(String $codename)`

The debian::codename::gt function.

Returns: `Boolean` result of the comparison

##### Examples

###### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::gt('buster') == False
debian::codename::gt('stretch') == True
debian::codename::gt('bullseye') == False
```

##### `codename`

Data type: `String`

the codename you want to test against

### `debian::codename::le`

Type: Puppet Language

Test if the running debian codename is less then or equal to the codename passed

#### Examples

##### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::le('buster') == True
debian::codename::le('stretch') == False
debian::codename::le('bullseye') == True
```

#### `debian::codename::le(String $codename)`

The debian::codename::le function.

Returns: `Boolean` result of the comparison

##### Examples

###### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::le('buster') == True
debian::codename::le('stretch') == False
debian::codename::le('bullseye') == True
```

##### `codename`

Data type: `String`

the codename you want to test against

### `debian::codename::lt`

Type: Puppet Language

Test if the running debian codname is less then the codname passed

#### Examples

##### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::lt('buster') == False
debian::codename::lt('stretch') == False
debian::codename::lt('bullseye') == True
```

#### `debian::codename::lt(String $codename)`

The debian::codename::lt function.

Returns: `Boolean` result of the comparison

##### Examples

###### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::lt('buster') == False
debian::codename::lt('stretch') == False
debian::codename::lt('bullseye') == True
```

##### `codename`

Data type: `String`

the codename you want to test against

### `debian::codename::ne`

Type: Puppet Language

Test if the running debian codename is not equal to the codename passed

#### Examples

##### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::ne('buster') == False
debian::codename::ne('stretch') == True
```

#### `debian::codename::ne(String $codename)`

The debian::codename::ne function.

Returns: `Boolean` result of the comparison

##### Examples

###### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::ne('buster') == False
debian::codename::ne('stretch') == True
```

##### `codename`

Data type: `String`

the codename you want to test against

### `debian::codename::require`

Type: Puppet Language

fail to compile if the running debian codename against the codename passed using a specific operator.

#### Examples

##### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::require('buster')  # pass/no action
debian::codename::compare('stretch') # fail()
debian::codename::compare('stretch', '<') # fail()
debian::codename::compare('stretch', '>') # pass/no action
debian::codename::compare('buster', '>=') # pass/no action
debian::codename::compare('buster', '<=') # pass/no action
```

#### `debian::codename::require(String $codename, Enum['==', '>=', '>', '<', '<=', '!='] $operator = '==')`

The debian::codename::require function.

Returns: `Boolean` result of the comparison

##### Examples

###### 

```puppet
Assuming theses functions are compiled for a host running debian buster then
debian::codename::require('buster')  # pass/no action
debian::codename::compare('stretch') # fail()
debian::codename::compare('stretch', '<') # fail()
debian::codename::compare('stretch', '>') # pass/no action
debian::codename::compare('buster', '>=') # pass/no action
debian::codename::compare('buster', '<=') # pass/no action
```

##### `codename`

Data type: `String`

the codename you want to test against

##### `operator`

Data type: `Enum['==', '>=', '>', '<', '<=', '!=']`

the comparison operator to us i.e
==, >=, >, <, <= or !=

## Data types

### `Debian::Codename`

a type which can be used to validate debian and supported debian derivative codenames

#### Examples

##### 

```puppet
apt::repository {'foo':
  dist => lookup('foo::bar', Debian::Codename)
}
```

Alias of `Variant[Debian::Codename::Debian]`

### `Debian::Codename::Debian`

a type which can be used to validate debian codenames.  specifically ones
from the debian project and not including any debian derivatives

#### Examples

##### 

```puppet
apt::repository {'foo':
  dist => lookup('foo::bar', Debian::Codename::Debian)
}
```

Alias of `Enum['jessie', 'stretch', 'buster', 'bullseye']`
